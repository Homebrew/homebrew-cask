cask "reactide" do
  version "3.0.0,3.0-beta"
  sha256 "5aa9faf6d6486b4bf47df80b42c3f9070dd384344552d641c15e32bef3e2cbae"

  url "https://github.com/reactide/reactide/releases/download/v#{version.csv.second}/Reactide-#{version.csv.first}.dmg",
      verified: "github.com/reactide/reactide/"
  name "Reactide"
  desc "Dedicated IDE for React web application development"
  homepage "https://reactide.io/"

  livecheck do
    url :homepage
    regex(%r{href=.*?v?(\d+(?:\.\d+)+(-beta|-alpha)?)/Reactide-(\d+(?:\.\d+)+)}i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| "#{match[2]},#{match[0]}" }
    end
  end

  depends_on macos: ">= :sierra"

  app "Reactide.app"

  zap trash: [
    "~/Library/Application Support/Reactide",
    "~/Library/Saved Application State/io.reactide.savedState",
    "~/Library/Preferences/io.reactide.plist",
    "~/Library/Logs/Reactide",
  ]
end
