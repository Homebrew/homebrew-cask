cask "eclipse-ide" do
  arch arm: "aarch64", intel: "x86_64"

  version "4.38,2025-12"
  sha256 arm:   "9c2f8151949725c6bc63651018d3df54d1453f57009724f1db5eee1d53f7e2d9",
         intel: "c6b594cba3e7f1bc8f21c4ffc8f176bae741708c74c2c1d6d6cf3ad4327a0e29"

  url "https://www.eclipse.org/downloads/download.php?file=/technology/epp/downloads/release/#{version.csv.second}/R/eclipse-committers-#{version.csv.second}-R-macosx-cocoa-#{arch}.dmg&r=1"
  name "Eclipse IDE for Eclipse Committers"
  desc "Eclipse integrated development environment"
  homepage "https://eclipse.org/"

  livecheck do
    url "https://download.eclipse.org/eclipse/downloads/data.json"
    regex(/^(\d{4}-\d{2})/i)
    strategy :json do |json, regex|
      json["releases"]&.map do |release|
        version = release["label"]
        next if version.blank?

        match = release["date"]&.match(regex)
        next if match.blank?

        "#{version},#{match[1]}"
      end
    end
  end

  depends_on macos: ">= :big_sur"

  app "Eclipse.app"

  zap trash: "~/Library/Preferences/epp.package.committers.plist"
end
