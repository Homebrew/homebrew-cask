cask "fvim" do
  version "0.3.543,g18454bc"
  sha256 "4e98f186d0a72b7c6b247a599231756709e282b93e0a7aced1e3d2729142fa0f"

  url "https://github.com/yatli/fvim/releases/download/v#{version.csv.first}%2B#{version.csv.second}/fvim-osx-x64-v#{version.csv.first}+#{version.csv.second}.zip"
  name "FVim"
  desc "GUI for the Neovim text editor"
  homepage "https://github.com/yatli/fvim"

  livecheck do
    url :url
    strategy :github_latest do |page|
      match = page.match(/v?(\d+(?:\.\d+)+)\+(g?\h+)/i)
      next if match.blank?

      "#{match[1]},#{match[2]}"
    end
  end

  app "FVim.app"

  zap trash: "~/Library/Saved Application State/com.fvim.www.savedState"
end
