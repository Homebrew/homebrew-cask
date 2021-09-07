cask "fvim" do
  version "0.3.423,g6e28667"
  sha256 "618c0e288291986a46b15236007eee52015e5afe5d32ee441d3f2eaef3902eb6"

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
