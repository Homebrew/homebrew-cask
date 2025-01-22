cask "olympus" do
  version "4571"
  sha256 "346d27ec89d201eec9bac32c996065c7e6d0192701955c3fd83f2b0121d824d1"

  url "https://dev.azure.com/EverestAPI/Olympus/_apis/build/builds/#{version}/artifacts?artifactName=macos.main&$format=zip",
      verified: "dev.azure.com/EverestAPI/Olympus/_apis/build/builds/"
  name "Olympus"
  desc "Everest (Mod loader for video games Celeste) installer / manager"
  homepage "https://everestapi.github.io/"

  livecheck do
    url "https://dev.azure.com/EverestAPI/Olympus/_apis/build/builds"
    strategy :json do |json|
      json["value"]&.map do |build|
        build["id"]&.to_s if build["sourceBranch"] == "refs/heads/stable"
      end
    end
  end

  container nested: "macos.main/dist.zip"

  app "Olympus.app"

  zap trash: [
    "~/Library/Application Support/Olympus",
    "~/Library/Saved Application State/everest.olympus.savedState",
  ]
end
