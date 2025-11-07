cask "handy" do
  arch arm: "aarch64", intel: "x64"

  version "0.6.0"
  sha256 arm:   "31488bfe2e91b4abcbdd5ad77180827b08660c5c005a297891983f1123df153c",
         intel: "59636951f5811ea562197b65b260390caaaed194d695bafdab401d8608a3e458"

  url "https://github.com/cjpais/Handy/releases/download/v#{version}/Handy_#{version}_#{arch}_darwin.dmg",
      verified: "github.com/cjpais/Handy/"
  name "Handy"
  desc "Speech to text application"
  homepage "https://handy.computer/"

  depends_on macos: ">= :ventura"

  app "Handy.app"

  zap trash: [
    "~/Library/Application Support/com.pais.handy",
    "~/Library/Caches/com.pais.handy",
    "~/Library/LaunchAgents/Handy.plist",
    "~/Library/WebKit/com.pais.handy",
  ]
end
