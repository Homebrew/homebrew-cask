cask "objectivesharpie" do
  version "3.5.45"
  sha256 "02904517ce4324d50877c32eb0b55bc87cd1ff2b298a3dd9f22ac20570e6a4fc"

  url "https://download.visualstudio.microsoft.com/download/pr/77766fbc-995f-410b-9546-4a1731051956/d3f34a07d9c3a2fcdda16bb3fe5b41e8/objectivesharpie-#{version}.pkg"
  name "Objective Sharpie"
  desc "Tool used to generate C# interfaces starting from objective-c code"
  homepage "https://docs.microsoft.com/en-au/xamarin/cross-platform/macios/binding/objective-sharpie/"

  livecheck do
    url "https://aka.ms/objective-sharpie"
    strategy :header_match
  end

  pkg "ObjectiveSharpie-#{version}.pkg"

  uninstall pkgutil: "com.xamarin.ObjectiveSharpie"
end
