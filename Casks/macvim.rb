cask "macvim" do
  version "176"
  sha256 "bafebef360931f8df1057887b00fd8be039a4312c7aa300f0421860953bb880a"

  url "https://github.com/macvim-dev/macvim/releases/download/release-#{version}/MacVim.dmg"
  name "MacVim"
  desc "Text editor"
  homepage "https://github.com/macvim-dev/macvim"

  livecheck do
    url :url
    regex(/^release[._-]v?(\d+(?:\.\d+)*)$/i)
  end

  auto_updates true
  conflicts_with formula: "macvim"

  app "MacVim.app"

  %w[
    gview
    gvim
    gvimdiff
    gvimex
    mview
    mvim
    mvimdiff
    mvimex
    view
    vim
    vimdiff
    vimex
    vi
  ].each { |link_name| binary "#{appdir}/MacVim.app/Contents/bin/mvim", target: link_name }

  zap trash: [
    "~/Library/Caches/org.vim.MacVim",
    "~/Library/Preferences/org.vim.MacVim.LSSharedFileList.plist",
    "~/Library/Preferences/org.vim.MacVim.plist",
  ]
end
