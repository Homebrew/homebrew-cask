cask "fvim" do
  version "0.3.520,g8a6f26b"
  sha256 "25781fecb94754d37a0d484a02e8e6266f31618ee927fdfef1b31ed45fc7775b"

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
