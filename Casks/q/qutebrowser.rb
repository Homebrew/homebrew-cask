cask "qutebrowser" do
  arch arm: "arm64", intel: "x86_64"

  version "3.6.3"
  sha256 arm:   "2a4fae5acd90268b9a0fd53999adc026c4781eda96fc1961f3333d15a8f5bb4d",
         intel: "0afb91af650548a6f52ff94e6875001fb72d94e0c5fb8d0afe4fa0a099b31dc8"

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
