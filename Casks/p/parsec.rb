cask "parsec" do
  version "150-95d"
  sha256 :no_check

  url "https://builds.parsec.app/package/parsec-macos.pkg"
  name "Parsec"
  desc "Remote desktop"
  homepage "https://parsec.app/"

  livecheck do
    url "https://builds.parsec.app/channel/release/appdata/macos/latest"
    regex(/parsecd[._-]v?(\d+(?:[.-]\d+)+[a-z]*)\.dylib/i)
    strategy :json do |json, regex|
      json["so_name"]&.match(regex) { |match| match[1] }
    end
  end

  pkg "parsec-macos.pkg"

  postflight do
    set_ownership "~/.parsec"
  end

  uninstall quit:    "tv.parsec.www",
            pkgutil: "tv.parsec.www"

  zap trash: [
    "~/.parsec",
    "~/Library/Caches/tv.parsec.www",
    "~/Library/HTTPStorages/tv.parsec.www",
    "~/Library/Preferences/tv.parsec.www.plist",
  ]
end
