cask "clion" do
  version "2021.1,211.6693.114"

  if Hardware::CPU.intel?
    sha256 "a60e0da5ad7ac01d8ddaf5cc4d7046e195fcfdfcc370d6fd98e6374fa7bf01d2"
    url "https://download.jetbrains.com/cpp/CLion-#{version.before_comma}.dmg"
  else
    sha256 "f1421e0869db8490928280e7bd0f2798b9c933983a11043b511d6b90d9e91c48"
    url "https://download.jetbrains.com/cpp/CLion-#{version.before_comma}-aarch64.dmg"
  end

  name "CLion"
  desc "C and C++ IDE"
  homepage "https://www.jetbrains.com/clion/"

  livecheck do
    url "https://data.services.jetbrains.com/products/releases?code=CL&latest=true&type=release"
    strategy :page_match do |page|
      version = page.match(/"version":"(\d+(?:\.\d+)*)/i)
      build = page.match(/"build":"(\d+(?:\.\d+)*)/i)
      "#{version[1]},#{build[1]}"
    end
  end

  auto_updates true

  app "CLion.app"

  uninstall_postflight do
    ENV["PATH"].split(File::PATH_SEPARATOR).map { |path| File.join(path, "clion") }.each do |path|
      if File.exist?(path) &&
         File.readlines(path).grep(/# see com.intellij.idea.SocketLock for the server side of this interface/).any?
        File.delete(path)
      end
    end
  end

  zap trash: [
    "~/Library/Application Support/CLion#{version.major_minor}",
    "~/Library/Caches/CLion#{version.major_minor}",
    "~/Library/Logs/CLion#{version.major_minor}",
    "~/Library/Preferences/CLion#{version.major_minor}",
  ]
end
