cask "stubbymanager" do
  version "0.2.6,6782984"
  sha256 "0b9de130ac55e02928a21f334ac5c481b092e6535445a402caa7bb165b0b3dba"

  url "https://dnsprivacy.org/wiki/download/attachments/#{version.csv.second}/StubbyManager.pkg"
  name "StubbyManager"
  homepage "https://dnsprivacy.org/wiki/display/DP/Stubby+GUI+for+macOS"

  livecheck do
    url "https://dnsprivacy.org/wiki/display/DP/Stubby+GUI+for+macOS"
    strategy :page_match do |page|
      v = page[/stubby\s+version:\s*(\d+(?:\.\d+)*)/i, 1]
      id = page[%r{href=.*?/(\d+)/StubbyManager\.pkg}i, 1]
      "#{v},#{id}"
    end
  end

  pkg "StubbyManager.pkg"

  uninstall pkgutil: "com.sinodun.pkg.Stubby"
end
