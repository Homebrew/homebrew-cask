cask "autogram" do
  arch intel: "-intel"

  version "2.7.5"
  sha256 arm:   "2e225c212377157a4500ef8485772d7a0187dd515575cff33ab24a3cd3c6ab71",
         intel: "34851c479f556badaa2d03baf8aa7c9e0b58db2289601eb5113542b4bdc564f4"

  url "https://github.com/slovensko-digital/autogram/releases/download/v#{version}/autogram-#{version}-macos#{arch}.pkg"
  name "autogram"
  desc "Application for electronic signing of signatures"
  homepage "https://sluzby.slovensko.digital/autogram/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on :macos

  pkg "autogram-#{version}-macos#{arch}.pkg"

  # Following 'preflight_steps' is needed to avoid interactive parts of the installation process. More details in https://github.com/Homebrew/homebrew-cask/pull/201161#discussion_r1950819869
  preflight_steps do
    mkdir_p "Library/Application Support/Autogram/tls", base: :home
    touch "Library/Application Support/Autogram/tls/skip", base: :home
  end

  uninstall quit:    "digital.slovensko.autogram",
            pkgutil: "digital.slovensko.autogram"

  zap trash: [
    "~/Library/Application Support/Autogram",
    "~/Library/Preferences/digital.slovensko.autogram.plist",
    "~/Library/Saved Application State/digital.slovensko.autogram.savedState",
  ]

  caveats do
    license "https://github.com/slovensko-digital/autogram/blob/main/LICENSE"
  end
end
