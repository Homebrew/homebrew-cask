cask "fvim" do
  version "0.2.348,81a158c"
  sha256 "6e5ef4c8f9b04dd65e872eef2b3e7b4444fc1f1e797aeea5bae0062b66d5dda7"

  url "https://github.com/yatli/fvim/releases/download/v#{version.before_comma}%2B#{version.after_comma}/fvim-osx.zip"
  name "FVim"
  desc "GUI for the Neovim text editor"
  homepage "https://github.com/yatli/fvim"

  livecheck do
    url :url
    strategy :github_latest do |page|
      match = page.match(%r{href=.*?/tag/v?(\d+(?:\.\d+)+)%2B([0-9a-f]+)["' >]}i)
      "#{match[1]},#{match[2]}"
    end
  end

  app "FVim.app"

  zap trash: "~/Library/Saved Application State/com.fvim.www.savedState"
end
