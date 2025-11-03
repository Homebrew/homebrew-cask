cask "qutebrowser" do
  arch arm: "arm64", intel: "x86_64"

  version "3.6.1"
  sha256 arm:   "da39359d2ab63bbcfab6c557effca9beeda2a5087599bf3f0f3fe7f4a9eabc03",
         intel: "09980db1424207072c8c5debce9a6643782d173f77bef4a49f37c9f42c98ec21"

  url "https://github.com/qutebrowser/qutebrowser/releases/download/v#{version}/qutebrowser-#{version}-#{arch}.dmg",
      verified: "github.com/qutebrowser/qutebrowser/"
  name "qutebrowser"
  desc "Keyboard-driven, vim-like browser based on PyQt5"
  homepage "https://www.qutebrowser.org/"

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  depends_on macos: ">= :big_sur"

  # shim script (https://github.com/Homebrew/homebrew-cask/issues/18809)
  shimscript = "#{staged_path}/qutebrowser.wrapper.sh"
  app "qutebrowser.app"
  binary shimscript, target: "qutebrowser"

  preflight do
    File.write shimscript, <<~EOS
      #!/bin/sh
      '#{appdir}/qutebrowser.app/Contents/MacOS/qutebrowser' "$@"
    EOS
  end

  zap trash: [
        "~/Library/Application Support/qutebrowser",
        "~/Library/Caches/qutebrowser",
        "~/Library/Preferences/qutebrowser",
      ],
      rmdir: "~/.qutebrowser"
end
