cask "macvim" do
  version "169"
  sha256 "cd558e503919c68997ad86513de3bc0915bd631615b1071b7fea02291d1bad07"

  url "https://github.com/macvim-dev/macvim/releases/download/snapshot-#{version}/MacVim.dmg"
  name "MacVim"
  desc "Text editor"
  homepage "https://github.com/macvim-dev/macvim"

  livecheck do
    url :url
    strategy :git
  end

  auto_updates true
  conflicts_with formula: "macvim"

  app "MacVim.app"

  %w[
    gview
    gvim
    gvimdiff
    mview
    mvim
    mvimdiff
    view
    vim
    vimdiff
  ].each { |link_name| binary "#{appdir}/MacVim.app/Contents/bin/mvim", target: link_name }

  zap trash: [
    "~/Library/Caches/org.vim.MacVim",
    "~/Library/Preferences/org.vim.MacVim.LSSharedFileList.plist",
    "~/Library/Preferences/org.vim.MacVim.plist",
  ]
end
