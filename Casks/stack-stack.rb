cask "stack-stack" do
  version "3.11.1"
  sha256 "5579fdfdf666ffe3390a3ba36ab7af069ac00478cc0cea7a3499563035d9f93e"

  # stack-v1.s3.amazonaws.com/ was verified as official when first introduced to the cask
  url "https://stack-v1.s3.amazonaws.com/builds/prod/Stack-#{version}.dmg"
  appcast "https://stack-v1.s3.amazonaws.com/"
  name "Stack"
  homepage "https://stackers.app/"

  auto_updates true
  depends_on macos: ">= :yosemite"

  app "Stack.app"

  uninstall quit:       "com.stack.io",
            login_item: "Stack"

  zap trash: [
    "~/Library/Application Support/Stack",
    "~/Library/Preferences/com.stack.io.plist",
  ]
end
