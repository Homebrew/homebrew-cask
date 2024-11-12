cask "libcblite-community" do
  version "3.2.0"
  sha256 "f299c190eb26a1fd5c15361c17e11907172d563e82d133e33a9696fb0ba8563f"

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
    if File.symlink?("#{HOMEBREW_PREFIX}/lib/libcblite.#{version.major}.dylib")
      puts "Removing library symlinks in #{HOMEBREW_PREFIX}/lib"
      File.unlink("#{HOMEBREW_PREFIX}/lib/libcblite.#{version.major}.dylib", "#{HOMEBREW_PREFIX}/lib/libcblite.dylib")
    end
  end

  # No zap stanza required
end
