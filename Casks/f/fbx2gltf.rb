cask "fbx2gltf" do
  version "0.13.1"
  sha256 "863bd62a3d289218b19642b39b1170411df3f0448370a809ed47f1e386b77ac5"

  url "https://github.com/godotengine/FBX2glTF/releases/download/v#{version}/FBX2glTF-macos-x86_64.zip"
  name "FBX2glTF"
  desc "CLI for conversion of FBX files to glTF files"
  homepage "https://github.com/godotengine/FBX2glTF"

  binary "FBX2glTF-macos-x86_64"

  caveats do
    requires_rosetta
    license "https://github.com/godotengine/FBX2glTF/releases/download/v#{version}/FBX2glTF-License.txt"
    license "https://github.com/godotengine/FBX2glTF/releases/download/v#{version}/FBX-SDK-License.rtf"
  end
end
