cask "objectivesharpie" do
  version "3.5.73,0e3b855b-f555-46d0-a39b-ea2a45d5ec46,1694826efa1882979f8be51402dceadb"
  sha256 "afb66bfd49c7038fff8f971adf54067eb84c9f96ba167ca937d1f53c49c1f2c9"

  url "https://download.visualstudio.microsoft.com/download/pr/#{version.csv.second}/#{version.csv.third}/objectivesharpie-#{version.csv.first}.pkg"
  name "Objective Sharpie"
  desc "Tool used to generate C# interfaces starting from objective-c code"
  homepage "https://docs.microsoft.com/en-au/xamarin/cross-platform/macios/binding/objective-sharpie/"

  livecheck do
    url "https://aka.ms/objective-sharpie"
    regex(%r{/download/pr/([^/]+)/([^/]+)/objectivesharpie[._-](\d+(?:\.\d+)+)\.pkg}i)
    strategy :header_match do |headers, regex|
      match = headers["location"].match(regex)
      next if match.blank?

      "#{match[3]},#{match[1]},#{match[2]}"
    end
  end

  pkg "objectivesharpie-#{version.csv.first}.pkg"

  uninstall pkgutil: "com.xamarin.ObjectiveSharpie"

  # No zap stanza required
end
