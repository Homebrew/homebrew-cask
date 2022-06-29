cask "objectivesharpie" do
  version "3.5.60,f33c2a8f-5444-4a5c-8de2-33d18321babe,9413f203ffc532b8d16babacc9ff6ff4"
  sha256 "fc124f3e283c54913b8e167ae7d3273be9ce730cdce17b109dfc3c29f1f3d7b2"

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

  pkg "ObjectiveSharpie-#{version}.pkg"

  uninstall pkgutil: "com.xamarin.ObjectiveSharpie"
end
