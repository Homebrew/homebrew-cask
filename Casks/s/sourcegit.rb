cask "sourcegit" do
  arch arm: "arm64", intel: on_system_conditional(macos: "x64", linux: "amd64")
  os macos: "osx", linux: "linux"
  begin_separator = on_system_conditional macos: "_", linux: "-"
  end_separator = on_system_conditional macos: "-", linux: "."
  url_end = on_system_conditional macos: "zip", linux: "AppImage"

  version "2026.24"
  sha256 arm:          "f0caef869da275742bd66c86b0b01d60f979a82eb45485d2d14c5b2650d17d6f",
         intel:        "0711bd3dc55ca04aedbfb789d44321af9ffb56e90d034c891280b40a05617f14",
         arm64_linux:  "deb4742c5c0a34e8b3f8f3f977a5868d2e1e1e8fb0fbfe338411179b9b2cc257",
         x86_64_linux: "879d66ea9a3503ae47971065a8d5dc0b9d6b61b2031467f4cc0459fe6128f012"

  on_macos do
    app "SourceGit.app"
    binary "#{appdir}/SourceGit.app/Contents/MacOS/SourceGit", target: "sourcegit"

    zap trash: [
      "~/Library/Application Support/SourceGit",
      "~/Library/Saved Application State/com.sourcegit.app.savedState",
    ]
  end
  on_linux do
    app_image "sourcegit-#{version}.linux.#{arch}.AppImage", target: "SourceGit.AppImage"

    zap trash: [
      "~/.cache/SourceGit",
      "~/.config/SourceGit",
    ]
  end

  url "https://github.com/sourcegit-scm/sourcegit/releases/download/v#{version}/sourcegit#{begin_separator}#{version}.#{os}#{end_separator}#{arch}.#{url_end}"
  name "SourceGit"
  desc "Git GUI client"
  homepage "https://github.com/sourcegit-scm/sourcegit"
end
