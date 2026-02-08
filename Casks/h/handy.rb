cask "handy" do
  arch arm: "aarch64", intel: "x64"

  version "0.7.2"
  sha256 arm:   "1ad8a834e2f0b42107e88ae80132137179dce76d4676b2f9d1d5d8a450498df4",
         intel: "7769aeb1334aace8d28d61c0f15eb6900a995657015809a81a4f9f807d04c320"

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
