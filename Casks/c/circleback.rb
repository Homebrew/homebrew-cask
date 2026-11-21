cask "circleback" do
  arch arm: "arm64", intel: "x64"

  version "2.9.52,261113d4bqqj9s7"
  sha256 arm:   "517008e6e8207620b7871c97a1fbb4eb0b5531822a2f168c13bbe238999e8b6c",
         intel: "4aafecf750c34f255c8496d21c6a6d6a180404129730b8bc6a256f4ce7fb79f0"

  url "https://download.todesktop.com/2603165j5j84b/Circleback%20#{version.csv.first}%20-%20Build%20#{version.csv.second}-#{arch}-mac.zip"
  name "Circleback"
  desc "Meeting recorder and note-taking assistant"
  homepage "https://circleback.ai/"

  livecheck do
    url "https://download.todesktop.com/2603165j5j84b/latest-mac.yml"
    regex(/Build[ ._-]([^-]+)[._-]/i)
    strategy :electron_builder do |yaml, regex|
      yaml["files"]&.map do |item|
        match = item["url"]&.match(regex)
        next if match.blank?

        "#{yaml["version"]},#{match[1]}"
      end
    end
  end

  auto_updates true
  depends_on macos: :monterey

  app "Circleback.app"

  uninstall quit: "com.todesktop.24062654z2002es"

  zap trash: [
    "~/Library/Application Support/Circleback",
    "~/Library/Application Support/com.todesktop.24062654z2002es",
    "~/Library/Caches/@circlebackdesktop-updater",
    "~/Library/Caches/com.todesktop.24062654z2002es",
    "~/Library/HTTPStorages/com.todesktop.24062654z2002es",
    "~/Library/Preferences/com.todesktop.24062654z2002es.plist",
  ]
end
