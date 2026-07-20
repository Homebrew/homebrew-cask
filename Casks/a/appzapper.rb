cask "appzapper" do
  version "2.0.4"
  sha256 "a03299821d55a83bd3072cb6e13f2badb9108d0ea5ef017004c0f6b762ceb80b"

  url "https://appzapper.com/downloads/appzapper#{version.no_dots}.zip"
  name "AppZapper"
  desc "Tool to uninstall unwanted applications and their support files"
  homepage "https://appzapper.com/"

  # The upstream website doesn't provide any version information, so we have to
  # naively add dots to the dotless version in the file name.
  livecheck do
    url "https://appzapper.com/downloads/latest.zip"
    regex(/appzapper[._-]?v?(\d+(?:\.\d+)*)\.zip/i)
    strategy :header_match do |headers, regex|
      match = headers["location"]&.match(regex)
      next unless match

      ver = match[1]
      ver.include?(".") ? ver : ver.chars.join(".")
    end
  end

  auto_updates true
  depends_on macos: :big_sur

  app "AppZapper.app"

  zap trash: [
    "~/Library/Application Support/AppZapper",
    "~/Library/Preferences/com.appzapper.appzapper2.plist",
  ]
end
