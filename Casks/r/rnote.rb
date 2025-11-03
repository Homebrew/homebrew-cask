cask "rnote" do
  arch arm: "arm64", intel: "x86_64"

  version "0.13.1+209"
  sha256 arm:   "c2572fa727cfa0a79e7f6dad2143fe75de44b7aa10d5da2732ad5ff0a8df3dc8",
         intel: "67b26115f267dba7dc4980c7dd4e63d9270e15efcfb50f6d43d8633a0369a5a1"

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
