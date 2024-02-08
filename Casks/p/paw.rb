cask "paw" do
  version "3.4.0,3004000012"
  sha256 "d393c6fb175d8e5f671361e1e2e4578fbab0eb6a03a2226507cad953a8a819da"

  url "https://cdn-builds.paw.cloud/paw/Paw-#{version.csv.first}.zip"
  name "Paw"
  desc "HTTP client that helps testing and describing APIs"
  homepage "https://paw.cloud/"

  deprecate! date: "2023-12-17", because: :discontinued

  auto_updates true
  depends_on macos: ">= :sierra"

  app "Paw.app"

  zap trash: [
    "~/Library/Application Scripts/com.luckymarmot.Paw",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.luckymarmot.paw.sfl*",
    "~/Library/Containers/com.luckymarmot.Paw",
    "~/Library/Preferences/com.luckymarmot.Paw.plist",
    "~/Library/Saved Application State/com.luckymarmot.Paw.savedState",
  ]

  caveats do
    <<~EOS
      #{token} has been renamed 'rapidapi',
      install rapidapi to continue receiving updates;

        brew install --cask rapidapi
    EOS
  end
end
