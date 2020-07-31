cask "post-haste" do
  version "2.6.5,2650"
  sha256 "d2c361add1422b6dda029a329b43fabe68ef3a2786d173644abfdce5ad7d1ccf"

  url "https://www.digitalrebellion.com/download/posthaste?version=#{version.after_comma}"
  appcast "https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://www.digitalrebellion.com/download/posthaste",
          must_contain: version.after_comma
  name "Post Haste"
  homepage "https://www.digitalrebellion.com/posthaste/"

  app "Post Haste.app"

  zap trash: [
    "~/Library/Application Support/Digital Rebellion/Post Haste/",
    "~/Library/Preferences/com.digitalrebellion.PostHaste.plist",
  ],
      rmdir: "~/Library/Application Support/Digital Rebellion"
end
