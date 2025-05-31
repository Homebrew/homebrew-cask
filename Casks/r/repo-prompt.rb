cask "repo-prompt" do
  version "1.2.14"
  sha256 "8e72adb87b841a3c8273283abb1e5cbca84a1bb88f37503b0e1a95d9ab0d416b"

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
