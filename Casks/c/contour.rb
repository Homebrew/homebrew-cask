cask "contour" do
  arch arm: "arm", intel: "x86"

  sha256 arm:   "fa71252eff85ef5b223861d3aa9918440a684fe3e71418698eacad538b40a383",
         intel: "fd560a5e58f55ac20cd0d440b136365428126ba6fac8edde69b4d36d98467c7e"

  on_arm do
    version "0.7.0.8982"

    depends_on macos: :ventura
  end
  on_intel do
    version "0.6.1.7494"

    disable! date: "2026-09-01", because: :fails_gatekeeper_check

    depends_on macos: :sonoma
  end

  url "https://github.com/contour-terminal/contour/releases/download/v#{version}/contour-#{version}-macOS-#{arch}.dmg"
  name "Contour"
  desc "Terminal emulator"
  homepage "https://github.com/contour-terminal/contour/"

  # Not every GitHub release provides a file for macOS, so we check multiple
  # recent releases instead of only the "latest" release.
  livecheck do
    url :url
    regex(/^contour[._-]v?(\d+(?:\.\d+)+)[._-]macOS[._-]#{arch}\.(?:dmg|pkg|zip)$/i)
    strategy :github_releases do |json, regex|
      json.map do |release|
        next if release["draft"] || release["prerelease"]

        release["assets"]&.map do |asset|
          match = asset["name"]&.match(regex)
          next if match.blank?

          match[1]
        end
      end.flatten
    end
  end

  app "contour.app"
  binary "#{appdir}/contour.app/Contents/MacOS/contour"
  binary "#{appdir}/contour.app/Contents/Resources/terminfo/63/contour",
         target: "#{ENV.fetch("TERMINFO", "~/.terminfo")}/63/contour"
  bash_completion "#{appdir}/contour.app/Contents/Resources/shell-integration/shell-integration.bash",
                  target: "contour"
  fish_completion "#{appdir}/contour.app/Contents/Resources/shell-integration/shell-integration.fish",
                  target: "contour.fish"
  zsh_completion "#{appdir}/contour.app/Contents/Resources/shell-integration/shell-integration.zsh",
                 target: "_contour"

  zap trash: [
    "~/.config/contour",
    "~/Library/Caches/contour",
  ]
end
