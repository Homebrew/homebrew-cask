cask "otel-viewer" do
  version "0.1.1"
  sha256 "77c759167af1fabac7cb913e6a6579c36d3ea1e135d54e475dc13c89a0f4dda0"

  url "https://github.com/stivio00/otel-viewer/releases/download/v#{version}/otel-viewer_#{version}_aarch64.dmg"
  name "otel-viewer"
  desc "OTLP/gRPC collector with DuckDB storage, REST API and SQL console"
  homepage "https://github.com/stivio00/otel-viewer"

  depends_on arch: :arm64
  depends_on macos: :ventura

  app "otel-viewer.app"

  zap trash: "~/Library/Application Support/com.otelviewer.desktop"
end
