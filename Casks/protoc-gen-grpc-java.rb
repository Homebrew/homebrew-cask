cask "protoc-gen-grpc-java" do
  version "1.41.0"
  sha256 "f92859e25646f0db33b9b542a07053ebf2569304abf18338c9e6f75ec8993b0d"

  url "https://search.maven.org/remotecontent?filepath=io/grpc/protoc-gen-grpc-java/#{version}/protoc-gen-grpc-java-#{version}-osx-x86_64.exe",
      verified: "search.maven.org/remotecontent?filepath=io/grpc/protoc-gen-grpc-java"
  name "protoc-gen-grpc-java"
  desc "Protoc plugin that generates code for gRPC-Java clients"
  homepage "https://github.com/grpc/grpc-java"

  livecheck do
    url "https://search.maven.org/remotecontent?filepath=io/grpc/protoc-gen-grpc-java/maven-metadata.xml"
    strategy :page_match
    regex(/(\d+(?:\.\d+)+)/i)
  end

  depends_on macos: ">= :sierra"

  binary "protoc-gen-grpc-java-1.41.0-osx-x86_64.exe", target: "protoc-gen-grpc-java"
end
