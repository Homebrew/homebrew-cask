cask "positron" do
  arch arm: "arm64", intel: "x64"

  version "2025.07.0-204"
  sha256 arm:   "cb6638d0640e47df38b725acf2bb42ad5b4a0f0207ac5734a422ccab9527b9f0",
         intel: "414ed38f88f66c26fed5cb1f32a4b719449f6b4b29a5001c22916286e72dc68e"

  url "https://cdn.posit.co/positron/releases/mac/#{arch}/Positron-darwin-#{version}-#{arch}.zip"
  name "Positron"
  desc "Data science IDE"
  homepage "https://positron.posit.co/"

  livecheck do
    url "https://cdn.posit.co/positron/releases/mac/#{arch}/releases.json"
    strategy :json do |json|
      json["version"]
    end
  end

  depends_on macos: ">= :catalina"

  app "Positron.app"

  zap trash: [
    "~/.positron",
    "~/Library/Application Support/Positron",
    "~/Library/Preferences/com.rstudio.positron.plist",
    "~/Library/Saved Application State/com.rstudio.positron.savedState",
  ]
end
