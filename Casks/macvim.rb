cask "macvim" do
  version "8.2.2127,168"
  sha256 "aead2cf2f61d1752ad82d10e685f714a4f473a44be757f4cb762b4df152ccd83"

  url "https://github.com/macvim-dev/macvim/releases/download/snapshot-#{version.after_comma}/MacVim.dmg"
  appcast "https://github.com/macvim-dev/macvim/releases.atom"
  name "MacVim"
  desc "Text editor"
  homepage "https://github.com/macvim-dev/macvim"

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
