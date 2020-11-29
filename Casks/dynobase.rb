cask "dynobase" do
  version "1.1.1,1.2.1"
  sha256 "f0b70cc4057f66dc060bebe807478f543af79ccc019eebcf7ff648366248fc4e"

  # github.com/Dynobase/dynobase was verified as official when first introduced to the cask
  url "https://github.com/Dynobase/dynobase/releases/download/#{version.after_comma}/Dynobase-#{version.before_comma}.dmg"
  appcast "https://github.com/Dynobase/dynobase/releases.atom"
  name "Dynobase"
  desc "GUI Client for DynamoDB"
  homepage "https://dynobase.dev/"

  app "Dynobase.app"

  zap trash: [
    "~/Library/Application Support/dynobase",
    "~/Library/Saved Application State/com.rwilinski.dynobase.savedState",
  ]
end
