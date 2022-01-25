cask "fvim" do
  version "0.3.489,g98c4036"
  sha256 "44290a2e19d89bc453fefacbc64b0fd4dd9729777be3055e0195a8020b348e87"

  url "https://github.com/yatli/fvim/releases/download/v#{version.csv.first}%2B#{version.csv.second}/fvim-osx-v#{version.csv.first}+#{version.csv.second}.zip"
  name "FVim"
  desc "GUI for the Neovim text editor"
  homepage "https://github.com/yatli/fvim"

  livecheck do
    url :url
    strategy :github_latest do |page|
      match = page.match(%r{href=.*?/tag/v?(\d+(?:\.\d+)+)\+(g?\h+)["' >]}i)
      next if match.blank?

      "#{match[1]},#{match[2]}"
    end
  end

  app "FVim.app"

  zap trash: "~/Library/Saved Application State/com.fvim.www.savedState"
end
