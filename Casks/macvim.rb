cask "macvim" do
  version "8.2.1424,164"
  sha256 "c6afd3b7ce6614271704333ff21d273f1df20685750cc83c8ba15009cea6cc4f"

  url "https://github.com/macvim-dev/macvim/releases/download/snapshot-#{version.after_comma}/MacVim.dmg"
  appcast "https://github.com/macvim-dev/macvim/releases.atom"
  name "MacVim"
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

  caveats <<~EOS
    To avoid overwriting vim binaries from other formulae or casks, install with the "--no-binaries" flag.
  EOS
end
