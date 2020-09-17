cask "kotlin-native" do
  version "1.4.0"
  sha256 "476f920631b0ccb4b8e25456ef49356fb33d6e3960e9f2ec8def0aaa23284168"

  # github.com/JetBrains/kotlin/ was verified as official when first introduced to the cask
  url "https://github.com/JetBrains/kotlin/releases/download/v#{version}/kotlin-native-macos-#{version.major_minor}.tar.gz"
  appcast "https://github.com/JetBrains/kotlin-native/releases.atom"
  name "Kotlin Native"
  homepage "https://kotlinlang.org/docs/reference/native-overview.html"

  conflicts_with formula: "kotlin"

  binary "kotlin-native-macos-#{version.major_minor}/bin/cinterop"
  binary "kotlin-native-macos-#{version.major_minor}/bin/jsinterop"
  binary "kotlin-native-macos-#{version.major_minor}/bin/klib"
  binary "kotlin-native-macos-#{version.major_minor}/bin/konan-lldb"
  binary "kotlin-native-macos-#{version.major_minor}/bin/konanc"
  binary "kotlin-native-macos-#{version.major_minor}/bin/kotlinc"
  binary "kotlin-native-macos-#{version.major_minor}/bin/kotlinc-native"
  binary "kotlin-native-macos-#{version.major_minor}/bin/run_konan"

  caveats do
    depends_on_java "6+"
  end
end
