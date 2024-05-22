cask "kotlin-native" do
  arch arm: "aarch64", intel: "x86_64"

  version "2.0.0"
  sha256 arm:   "3f13d0f6d54dcae7e8a8a011f5f71706d4339fa3246d5235d52a30d8edd39790",
         intel: "23e390aa2fc84a89a1e06b529c9e2c3f7ecd32ef706b25cb7dbf75b8946f8784"

  url "https://github.com/JetBrains/kotlin/releases/download/v#{version}/kotlin-native-prebuilt-macos-#{arch}-#{version}.tar.gz",
      verified: "github.com/JetBrains/kotlin/"
  name "Kotlin Native"
  desc "LLVM backend for Kotlin"
  homepage "https://kotlinlang.org/docs/reference/native-overview.html"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  conflicts_with formula: "kotlin"

  binary "kotlin-native-prebuilt-macos-#{arch}-#{version}/bin/cinterop"
  binary "kotlin-native-prebuilt-macos-#{arch}-#{version}/bin/generate-platform"
  binary "kotlin-native-prebuilt-macos-#{arch}-#{version}/bin/jsinterop"
  binary "kotlin-native-prebuilt-macos-#{arch}-#{version}/bin/klib"
  binary "kotlin-native-prebuilt-macos-#{arch}-#{version}/bin/konan-lldb"
  binary "kotlin-native-prebuilt-macos-#{arch}-#{version}/bin/konanc"
  binary "kotlin-native-prebuilt-macos-#{arch}-#{version}/bin/kotlinc-native"
  binary "kotlin-native-prebuilt-macos-#{arch}-#{version}/bin/run_konan"

  # No zap stanza required
  caveats do
    depends_on_java "6+"
  end
end
