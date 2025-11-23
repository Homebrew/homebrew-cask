cask "moefe-google-translate" do
  version "2.0.0-beta.2"
  sha256 "7c9b896336b3bd6ca978afcde97dfacfa4ebc785c7419c36bcf92c2475e5bd24"

  url "https://github.com/MoeFE/GoogleTranslate/releases/download/v#{version}/google-translate-#{version}-mac.zip"
  name "MoeFE Google Translate"
  desc "Google Translate client"
  homepage "https://github.com/MoeFE/GoogleTranslate"

  # no new release since 2018-08-27
  # current build has google client integration issue, https://github.com/MoeFE/GoogleTranslate/issues/468
  deprecate! date: "2024-01-24", because: :unmaintained
  disable! date: "2025-01-26", because: :unmaintained

  app "mac/Google 翻译.app"
end
