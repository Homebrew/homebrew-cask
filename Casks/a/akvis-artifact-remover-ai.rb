cask "akvis-artifact-remover-ai" do
  version "3.3"
  sha256 :no_check

  url "https://akvis-dl.sfo2.cdn.digitaloceanspaces.com/akvis-artifact-remover-app.dmg",
      verified: "akvis-dl.sfo2.cdn.digitaloceanspaces.com/"
  name "AKVIS Artifact Remover AI"
  desc "Removes JPEG compression artifacts using neural networks"
  homepage "https://akvis.com/en/artifact-remover/index.php"

  livecheck do
    url "https://akvis.com/en/artifact-remover/index.php"
    regex(/Artifact Remover AI (\d+(?:\.\d+)+)/i)
    strategy :page_match
  end

  depends_on macos: :catalina

  app "AKVIS Artifact Remover AI.app"

  zap trash: [
    "~/Library/Caches/com.akvis.ArtifactRemover",
    "~/Library/HTTPStorages/com.akvis.ArtifactRemover",
    "~/Library/Preferences/com.akvis.ArtifactRemover.plist",
    "~/Library/Saved Application State/com.akvis.ArtifactRemover.savedState",
  ]
end
