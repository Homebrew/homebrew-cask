cask "autogram" do
  arch intel: "-intel"

  version "2.8.3"
  sha256 arm:   "3b640dcf1c71ea8cd3ce54efb9b172842c437cade576b499594b3a4f5561b346",
         intel: "98888118491d5014055ebdef3e370cd2bc11ef4d795867ac117097861541a650"

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
