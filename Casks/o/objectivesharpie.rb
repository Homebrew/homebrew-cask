cask "objectivesharpie" do
  version "3.5.116,3a748cc2-780d-403c-88ba-700aa9a2d299,88cbfd86e85f56b4c61e092d0f0b9ad9"
  sha256 "4fc3acf4687d491a500194db0e7c915a767acdddd9804082c7f04805540b103a"

  url "https://download.visualstudio.microsoft.com/download/pr/#{version.csv.second}/#{version.csv.third}/objectivesharpie-#{version.csv.first}.pkg"
  name "Objective Sharpie"
  desc "Tool used to generate C# interfaces starting from objective-c code"
  homepage "https://docs.microsoft.com/en-au/xamarin/cross-platform/macios/binding/objective-sharpie/"

  livecheck do
    url "https://aka.ms/objective-sharpie"
    regex(%r{/download/pr/([^/]+)/([^/]+)/objectivesharpie[._-](\d+(?:\.\d+)+)\.pkg}i)
    strategy :header_match do |headers, regex|
      match = headers["location"]&.match(regex)
      next if match.blank?

      "#{match[3]},#{match[1]},#{match[2]}"
    end
  end

  pkg "objectivesharpie-#{version.csv.first}.pkg"

  uninstall pkgutil: "com.xamarin.ObjectiveSharpie"

  # No zap stanza required
end
