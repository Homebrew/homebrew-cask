cask "dynobase" do
  version "1.2.0"
  sha256 "82aca8d490a12c13562c0486e902cf65ff895e897526d506d26dd3b9416be700"

  # github.com/Dynobase/dynobase was verified as official when first introduced to the cask
  url "https://github.com/Dynobase/dynobase/releases/download/#{version}/Dynobase-#{version}.dmg"
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
