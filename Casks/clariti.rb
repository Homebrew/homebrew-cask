cask "clariti" do
  version "1.2.0"
  sha256 "94c4f3a78c71c9014f615887a4027d2d00733a14a56b17dc6c81e991cb523055"

  url "https://d3dsf8uz95lw15.cloudfront.net/builds/macos/Clariti-#{version}.dmg",
      verified: "d3dsf8uz95lw15.cloudfront.net/"
  name "Clariti"
  desc "Focus and relaxation soundscapes"
  homepage "https://clariti.io/"

  auto_updates true

  app "Clariti.app"

  zap trash: [
    "~/Library/Application Support/Clariti",
    "~/Library/Logs/Clariti",
    "~/Library/Preferences/io.clariti.plist",
  ]
end
