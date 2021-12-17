cask "aleo-studio" do
  version "0.15.2"
  sha256 "ac33308a0ae210cb23cd90b67d92ccba02245d869a9be8477050e08b41a6c084"

  url "https://aleo-studio-releases.sfo2.digitaloceanspaces.com/latest/macos/x64/Aleo%20Studio-#{version}-mac.zip",
      verified: "aleo-studio-releases.sfo2.digitaloceanspaces.com/"
  name "Aleo Studio"
  desc "IDE for zero-knowledge proofs"
  homepage "https://aleo.studio/"

  livecheck do
    url "https://aleo-studio-releases.sfo2.digitaloceanspaces.com/latest/macos/x64/latest-mac.yml"
    strategy :electron_builder
  end

  depends_on macos: ">= :high_sierra"

  app "Aleo Studio.app"

  zap trash: [
    "~/.aleo-studio",
    "~/Library/Application Support/aleo-studio",
  ]
end
