cask "qutebrowser" do
  arch arm: "arm64", intel: "x86_64"

  version "3.7.0"
  sha256 arm:   "98170241bf12a2fe1deabffc8120b70dc8e00e555bb712c38751c448f04954a3",
         intel: "c51d1e9461d7f6a1ff4559f9e709caeff95effa52d4186805368a525e2fd48c7"

  url "https://github.com/qutebrowser/qutebrowser/releases/download/v#{version}/qutebrowser-#{version}-#{arch}.dmg"
  name "qutebrowser"
  desc "Keyboard-driven, vim-like browser based on PyQt5"
  homepage "https://www.qutebrowser.org/"

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  depends_on macos: :big_sur

  app "qutebrowser.app"
  command_wrapper "qutebrowser",
                  executable: "#{appdir}/qutebrowser.app/Contents/MacOS/qutebrowser"

  zap trash: [
        "~/Library/Application Support/qutebrowser",
        "~/Library/Caches/qutebrowser",
        "~/Library/Preferences/qutebrowser",
      ],
      rmdir: "~/.qutebrowser"
end
