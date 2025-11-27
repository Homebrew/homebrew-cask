cask "rnote" do
  arch arm: "arm64", intel: "x86_64"

  version "0.13.1+212"
  sha256 arm:   "2ccb46aeab91b09cfb4a7e3411aaae21939eb7391a1d2062e4cec9bba968808c",
         intel: "adb37a8a84bf97394059647eab0cb3ba1cac77ac289fb26f88c81774276f5da6"

  on_arm do
    depends_on macos: ">= :big_sur"
  end
  on_intel do
    depends_on macos: ">= :catalina"
  end

  url "https://gitlab.com/api/v4/projects/44053427/packages/generic/rnote_macos/#{version}/Rnote-#{version}_#{arch}.dmg",
      verified: "gitlab.com/api/v4/projects/44053427/packages/generic/rnote_macos/"
  name "Rnote"
  desc "Sketch and take handwritten notes"
  homepage "https://rnote.flxzt.net/"

  livecheck do
    url "https://gitlab.com/api/v4/projects/44053427/releases"
    regex(/^v?(\d+(?:\.\d+)+(?:\+\d+)?)$/i)
    strategy :json do |json, regex|
      json.filter_map { |item| item["tag_name"]&.[](regex, 1) }
    end
  end

  app "Rnote.app"

  zap trash: "~/Library/Preferences/net.flxzt.Rnote.plist"
end
