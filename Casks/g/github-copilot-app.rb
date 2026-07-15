cask "github-copilot-app" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.23"
  sha256 arm:          "01b4ed989f70776ec46b48367de2463753231e815094ec6841b1bfebd7410fa5",
         intel:        "eb1ea374651ed43777fa65eaf3fa653ed720e29c6afd64dd7dc0bdd466eb434f",
         arm64_linux:  "a31ac5c4f9e076be2935788de8fde9686d11e64a3ff752915f9e2338d2b1d48f",
         x86_64_linux: "ed984ff061d0ea72085cf91c49c82db48a278f2293e0bfb3471e8500c27a5c40"

  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  url "https://github.com/github/app/releases/download/v#{version}/GitHub-Copilot-#{os}-#{arch}.#{url_end}"
  name "GitHub Copilot"
  desc "Native client for GitHub Copilot"
  homepage "https://github.com/github/app"

  on_macos do
    auto_updates true

    app "GitHub Copilot.app"

    zap trash: [
      "~/Library/Application Support/com.github.githubapp",
      "~/Library/Caches/com.github.githubapp",
      "~/Library/Preferences/com.github.githubapp.plist",
      "~/Library/WebKit/com.github.githubapp",
    ]
  end

  on_linux do
    app_image "GitHub-Copilot-linux-#{arch}.AppImage", target: "GitHub Copilot.AppImage"
  end
end
