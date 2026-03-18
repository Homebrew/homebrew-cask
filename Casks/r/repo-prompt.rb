cask "repo-prompt" do
  version "2.0.22"
  sha256 "315f0877669e67e7e879468ed99207a0ce267f6a89a764454eda455bbf58a3ee"

  url "https://repoprompt.s3.us-east-2.amazonaws.com/RepoPrompt-#{version}.dmg",
      verified: "repoprompt.s3.us-east-2.amazonaws.com/"
  name "Repo Prompt"
  desc "Prompt generation tool"
  homepage "https://repoprompt.com/"

  livecheck do
    url "https://repoprompt.s3.us-east-2.amazonaws.com/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :sonoma"

  app "Repo Prompt.app"

  zap trash: [
    "~/Library/Application Support/com.pvncher.repoprompt",
    "~/Library/Application Support/RepoPrompt",
    "~/Library/Caches/com.pvncher.repoprompt",
    "~/Library/HTTPStorages/com.pvncher.repoprompt",
    "~/Library/HTTPStorages/com.pvncher.repoprompt.binarycookies",
    "~/Library/Preferences/com.pvncher.repoprompt.plist",
  ]
end
