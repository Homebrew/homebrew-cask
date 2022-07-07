cask "objectivesharpie" do
  version "3.5.61,7336f72c-57aa-4e46-9936-cce4d1975ba9,b33be8b36a22c2cfbcbe5680f14e0901"
  sha256 "26bd5398745d96525ebd588cbe8f87d0881a029cb0fd8205e640c961ee479d8e"

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
end
