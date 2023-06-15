cask "otto-matic" do
  version "4.0.1"
  sha256 "2936a98e6f7d44c31cd08be7ecd11c817a83feaf80c307f77863812083c477ca"

  url "https://github.com/jorio/OttoMatic/releases/download/#{version}/OttoMatic-#{version}-mac.dmg",
      verified: "github.com/jorio/OttoMatic/"
  name "Otto Matic"
  desc "Science fiction 3D action/adventure game from Pangea Software"
  homepage "https://jorio.itch.io/ottomatic"

  app "Otto Matic.app"
  artifact "Documentation", target: "~/Library/Application Support/OttoMatic"

  zap trash: [
    "~/Library/Preferences/OttoMatic",
    "~/Library/Saved Application State/io.jor.ottomatic.savedState",
  ]
end
