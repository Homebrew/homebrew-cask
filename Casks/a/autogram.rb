cask "autogram" do
  arch intel: "-intel"

  version "2.9.0"
  sha256 arm:   "2a98b6c160cd19dfb29fd023d527ab5ea63cbc841ceb09854586ba0e32293005",
         intel: "008d1c76b70d345766647cc7e0572c483cf4ded6d67220bff39c6175f4a2af07"

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
