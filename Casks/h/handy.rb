cask "handy" do
  arch arm: "aarch64", intel: "x64"

  version "0.6.2"
  sha256 arm:   "be8e86eda4f8e23f9530964e0ff01342a8906e5abd4ad3e7cc90316d08ff2aa9",
         intel: "9c71e1059a9028f4611ff84823191b8a8f8e848d6e6dbcf1c44387e4074755cf"

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
