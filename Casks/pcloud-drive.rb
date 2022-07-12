cask "pcloud-drive" do
  version "3.11.6"

  if Hardware::CPU.intel?
    arch = "Mac"
    sha256 "557c319c64fdbda0fdad871fe7a058735a9cd96742a4472cf0061c80cd5a23cb"
    pkg "pCloud Drive 3.11.6.pkg"
    dl_url = "https://www.pcloud.com/how-to-install-pcloud-drive-mac-os.html?download=mac"
  else
    arch = "MacM1"
    sha256 "543d580d94bd9869d1c457563102132efa8db2205f1ecab98de92c5e65ff4e9d"
    pkg "pCloud Drive 3.11.6 macFUSE.pkg"
    dl_url = "https://www.pcloud.com/how-to-install-pcloud-drive-mac-os-m1.html?download=macm1"
  end

  url do
    require "net/http"
    require "uri"
    require "json"
    uri = URI.parse(dl_url)
    response = Net::HTTP.get_response(uri)
    dl_codes = response.body[/(driveDLcode = {[^}]*})/]
    dl_codes = dl_codes[/({[^}]*})/]
    dl_codes = dl_codes.chars.reject { |char| char.ord == 10 }.join
    dl_codes = dl_codes.chars.reject { |char| char.ord == 32 }.join
    dl_codes = dl_codes.chars.reject { |char| char.ord == 9 }.join
    dl_codes = dl_codes.tr!("'", '"')
    dl_codes = JSON.parse(dl_codes)
    api = "https://api.pcloud.com/"
    dl_codes = dl_codes[arch]
    uri = URI(api + "getpublinkdownload?code=" + dl_codes)
    response = Net::HTTP.get(uri)
    data = JSON.parse(response)
    data["hosts"][0] + data["path"]
  end
  name "pCloud Drive"
  desc "Utilities to mount and manage pCloud drive on local computer"
  homepage "https://www.pcloud.com/"

  depends_on cask: "macfuse"

  uninstall quit:    "com.pcloud.pcloud.macos",
            pkgutil: "com.mobileinno.pkg.pCloudDrive"
end
