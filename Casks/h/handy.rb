cask "handy" do
  arch arm: "aarch64", intel: "x64"

  version "0.7.4"
  sha256 arm:   "6c8caca37b038c635061ce62c0638107a8fc563f7839dc2c0e1ba5e527aae2ca",
         intel: "212b9045978f96452d9d1c39fd634e363fa5e19dd3c7dd381a251f0a0c87b242"

  url "https://github.com/cjpais/Handy/releases/download/v#{version}/Handy_#{version}_#{arch}.dmg",
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
