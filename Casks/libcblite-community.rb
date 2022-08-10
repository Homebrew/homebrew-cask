cask "libcblite-community" do
  version "3.0.2"
  sha256 "a7714c03e719351cf77646d1462491af9fccb6011cce79bba5064d618a06bd57"

  url "https://packages.couchbase.com/releases/couchbase-lite-c/#{version}/couchbase-lite-c-community-#{version}-macos.zip"
  name "Couchbase Lite (Community Edition)"
  desc "Couchbase Lite Libraries for C and C++ (Community Edition)"
  homepage "https://www.couchbase.com/products/lite"

  livecheck do
    cask "libcblite"
  end

  conflicts_with cask: "libcblite"
  depends_on macos: ">= :mojave"

  artifact "libcblite-#{version}/include/cbl", target: "#{HOMEBREW_PREFIX}/include/cbl"
  artifact "libcblite-#{version}/include/fleece", target: "#{HOMEBREW_PREFIX}/include/fleece"
  artifact "libcblite-#{version}/lib/cmake/CouchbaseLite", target: "#{HOMEBREW_PREFIX}/lib/cmake/CouchbaseLite"
  artifact "libcblite-#{version}/lib/libcblite.#{version}.dylib", target: "#{HOMEBREW_PREFIX}/lib/libcblite.#{version}.dylib"

  postflight do
    puts "Creating library symlinks in #{HOMEBREW_PREFIX}/lib"
    File.symlink("libcblite.#{version}.dylib", "#{HOMEBREW_PREFIX}/lib/libcblite.#{version.major}.dylib")
    File.symlink("libcblite.#{version.major}.dylib", "#{HOMEBREW_PREFIX}/lib/libcblite.dylib")
  end

  uninstall_postflight do
    puts "Removing library symlinks in #{HOMEBREW_PREFIX}/lib"
    File.unlink("#{HOMEBREW_PREFIX}/lib/libcblite.#{version.major}.dylib", "#{HOMEBREW_PREFIX}/lib/libcblite.dylib")
  end

  # No zap stanza required
end
