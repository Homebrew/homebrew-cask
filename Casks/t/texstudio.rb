cask "texstudio" do
  arch arm: "-m1"

  version "4.9.6"
  sha256 arm:   "bc24516fbe17d98fa5a2cc072834015c023fd42f1c0505a2baf14e616b5269b0",
         intel: "ada5b1cfef76252af83a6948c6927bdc152dc21f19a4997b4ac2ac3e4ccc2d31"

  url "https://github.com/texstudio-org/texstudio/releases/download/#{version}/texstudio-#{version}-osx#{arch}.zip",
      verified: "github.com/texstudio-org/texstudio/"
  name "TeXstudio"
  desc "LaTeX editor"
  homepage "https://texstudio.org/"

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  depends_on macos: :ventura

  app "texstudio-#{version}-osx#{arch}.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/texstudio.sfl*",
    "~/Library/Preferences/texstudio.plist",
    "~/Library/Saved Application State/texstudio.savedState",
  ]
end
