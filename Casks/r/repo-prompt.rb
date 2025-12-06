cask "repo-prompt" do
  version "1.5.51"
  sha256 "9b8872a1111d79fa8bb6fcdf79d698898dc38bb2d120ecbb287fe0586f9dcd6f"

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
