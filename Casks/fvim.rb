cask "fvim" do
  version "0.3.412,g3b521db"
  sha256 "f14e9841dd5836cb2d5fda8c6938fc557df877b0191315bc131794f853a7ace1"

  url "https://github.com/yatli/fvim/releases/download/v#{version.before_comma}%2B#{version.after_comma}/fvim-osx.zip"
  name "FVim"
  desc "GUI for the Neovim text editor"
  homepage "https://github.com/yatli/fvim"

  livecheck do
    url :url
    strategy :github_latest do |page|
      match = page.match(%r{href=.*?/tag/v?(\d+(?:\.\d+)+)%2B(g?\h+)["' >]}i)
      "#{match[1]},#{match[2]}"
    end
  end

  app "FVim.app"

  zap trash: "~/Library/Saved Application State/com.fvim.www.savedState"
end
