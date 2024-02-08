cask "objectivesharpie" do
  version "3.5.76,87c92e02-3d02-45de-bdd5-41721ed5bfc9,60cd0050e247aa99da79a52ef3228f32"
  sha256 "e6a4683863e80c634e0aaec25f6a1737c6ecac7142954f1fd7842266aef8bfce"

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
