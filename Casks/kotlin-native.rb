cask "kotlin-native" do
  version "1.4.21"
  sha256 "f3a65ea070cbfca89497a14340f1530d1ec37875efc8be9a972b6a7aefde29c0"

  url "https://github.com/JetBrains/kotlin/releases/download/v#{version}/kotlin-native-prebuilt-macos-#{version}.tar.gz",
      verified: "github.com/JetBrains/kotlin/"
  name "Kotlin Native"
  desc "LLVM backend for Kotlin"
  homepage "https://kotlinlang.org/docs/reference/native-overview.html"

  livecheck do
    url :url
    strategy :git
    regex(/^v(\d+(?:\.\d+)*)$/)
  end

  conflicts_with formula: "kotlin"

  binary "kotlin-native-prebuilt-macos-#{version}/bin/cinterop"
  binary "kotlin-native-prebuilt-macos-#{version}/bin/generate-platform"
  binary "kotlin-native-prebuilt-macos-#{version}/bin/jsinterop"
  binary "kotlin-native-prebuilt-macos-#{version}/bin/klib"
  binary "kotlin-native-prebuilt-macos-#{version}/bin/konan-lldb"
  binary "kotlin-native-prebuilt-macos-#{version}/bin/konanc"
  binary "kotlin-native-prebuilt-macos-#{version}/bin/kotlinc"
  binary "kotlin-native-prebuilt-macos-#{version}/bin/kotlinc-native"
  binary "kotlin-native-prebuilt-macos-#{version}/bin/run_konan"

  caveats do
    depends_on_java "6+"
  end
end
