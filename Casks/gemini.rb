cask "gemini" do
  version "2.6.7,345:1596455958"
  sha256 "51d69f431f11d06aedc4ed6dcc7231ffd5331d7c76fa7517e97578d292435a64"

  # dl.devmate.com/com.macpaw.site.Gemini was verified as official when first introduced to the cask
  url "https://dl.devmate.com/com.macpaw.site.Gemini#{version.major}/#{version.after_comma.before_colon}/#{version.after_colon}/Gemini#{version.major}-#{version.after_comma.before_colon}.zip"
  appcast "https://updates.devmate.com/com.macpaw.site.Gemini#{version.major}.xml"
  name "Gemini"
  homepage "https://macpaw.com/gemini"

  app "Gemini #{version.major}.app"

  zap trash: [
    "~/Library/Application Support/Gemini*",
    "~/Library/Caches/com.macpaw.site.Gemini*",
    "~/Library/Cookies/com.macpaw.site.Gemini*.binarycookies",
    "~/Library/Logs/com.macpaw.site.Gemini*",
    "~/Library/Preferences/com.macpaw.site.Gemini*",
    "~/Library/Saved Application State/com.macpaw.site.Gemini*",
    "/Users/Shared/Gemini #{version.major}",
  ]
end
